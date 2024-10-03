from database.requests import update_user
import keyboard as kb
from aiogram import Router, F, types
from aiogram.types import CallbackQuery, Message
from aiogram.fsm.state import StatesGroup, State
from aiogram.fsm.context import FSMContext

router = Router()


class Reg(StatesGroup):
    name = State()
    contact = State()
    email = State()
    device_serial = State()

@router.callback_query(F.data == "registration")
async def registration(callback: types.CallbackQuery, state: FSMContext):
    await callback.message.answer("Введите Ваше имя:")
    await state.set_state(Reg.name)

@router.message(Reg.name)
async def reg_name(message: types.Message, state: FSMContext):
    await state.update_data(name=message.text)
    await state.set_state(Reg.contact)
    await message.answer('Отправьте номер телефона', reply_markup=kb.contact)

@router.message(Reg.contact, F.contact)
async def reg_contact(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(contact=message.contact.phone_number)
    await state.set_state(Reg.email)
    await message.answer('Введите адрес электронной почты:')

@router.message(Reg.email)
async def reg_email(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(email=message.text)
    await state.set_state(Reg.device_serial)
    await message.answer('Введите серийный номер устройства:')

@router.message(Reg.device_serial)
async def reg_device_serial(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(device_serial=message.text)
    await update_user(
        message.from_user.id,
        data['name'],
        data['contact'],
        data['email'],
        message.text  
    )
    await state.clear()
    await message.answer('Ваше устройство успешно зарегистрировано! Приятного пользования. ❤️')
