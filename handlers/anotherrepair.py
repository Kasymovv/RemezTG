from database.requests import update_beauty, update_repair
from aiogram import Router, F, types
from aiogram.types import CallbackQuery, Message, reply_keyboard_remove
from aiogram.fsm.state import StatesGroup, State
from aiogram.fsm.context import FSMContext

router = Router()


class RegRepair(StatesGroup):
    name = State()
    contact = State()
    email = State()
    device = State()
    problem = State()


@router.callback_query(F.data == "another_repair")
async def repaironline(callback: types.CallbackQuery, state: FSMContext):
    await callback.message.answer("Введите Ваше имя:")
    await state.set_state(RegRepair.name)


@router.message(RegRepair.name)
async def reg_name(message: types.Message, state: FSMContext):
    await state.update_data(name=message.text)
    await state.set_state(RegRepair.contact)
    await message.answer("Отправьте номер телефона:")


@router.message(RegRepair.contact)
async def reg_contact(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(contact=message.text)
    await state.set_state(RegRepair.email)
    await message.answer("Введите адрес электронной почты:")


@router.message(RegRepair.email)
async def reg_email(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(email=message.text)
    await state.set_state(RegRepair.device)
    await message.answer("Какое у Вас устройство?")


@router.message(RegRepair.device)
async def reg_device(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(device=message.text)
    await state.set_state(RegRepair.problem)
    await message.answer("Опишите проблему")


@router.message(RegRepair.problem)
async def reg_problem(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(problem=message.text)
    await update_repair(
        message.from_user.id,
        data["name"],
        data["contact"],
        data["email"],
        data["device"],
        message.text,
    )
    await state.clear()
    await message.answer(
        "Ваше обращение успешно создано. Ожидайте, пожалуйста, обратной связи. ❤️"
    )
