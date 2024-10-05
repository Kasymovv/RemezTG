from database.requests import update_beauty
from aiogram import Router, F, types
from aiogram.types import CallbackQuery, Message, reply_keyboard_remove
from aiogram.fsm.state import StatesGroup, State
from aiogram.fsm.context import FSMContext

router = Router()


class RegBeauty(StatesGroup):
    name = State()
    contact = State()
    email = State()
    device = State()
    use_or_not = State()
    time = State()


@router.callback_query(F.data == "beautyonline")
async def beautyonline(callback: types.CallbackQuery, state: FSMContext):
    await callback.message.answer("Введите Ваше имя:")
    await state.set_state(RegBeauty.name)


@router.message(RegBeauty.name)
async def reg_name(message: types.Message, state: FSMContext):
    await state.update_data(name=message.text)
    await state.set_state(RegBeauty.contact)
    await message.answer("Отправьте номер телефона:")


@router.message(RegBeauty.contact)
async def reg_contact(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(contact=message.text)
    await state.set_state(RegBeauty.email)
    await message.answer("Введите адрес электронной почты:")


@router.message(RegBeauty.email)
async def reg_email(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(email=message.text)
    await state.set_state(RegBeauty.device)
    await message.answer("Какое устройство хотели бы протестировать?")


@router.message(RegBeauty.device)
async def reg_device(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(device=message.text)
    await state.set_state(RegBeauty.use_or_not)
    await message.answer("Ранее тестировали наш фен-стайлер?")


@router.message(RegBeauty.use_or_not)
async def reg_use_or_not(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(use_or_not=message.text)
    await state.set_state(RegBeauty.time)
    await message.answer("Подскажите удобную дату и время для Вас:")


@router.message(RegBeauty.time)
async def reg_beauty(message: types.Message, state: FSMContext):
    data = await state.get_data()
    await state.update_data(time=message.text)
    await update_beauty(
        message.from_user.id,
        data["name"],
        data["contact"],
        data["email"],
        data["device"],
        data["use_or_not"],
        message.text,
    )
    await state.clear()
    await message.answer(
        "Вы успешно записаны на укладку. В ближайшее время стилист свяжется с Вами для согласования времени. ❤️"
    )

