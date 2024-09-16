from aiogram import F, Router
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
from database import requests as rq
import keyboard as kb

router = Router()


@router.callback_query(F.data == "addresses")
async def addresses(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer("Выберите город:", reply_markup=await kb.cities())


@router.callback_query(F.data.startswith("city_"))
async def category_addresses(callback: CallbackQuery):
    address_data = await rq.get_address(callback.data.split("_")[1])
    await callback.answer()
    await callback.message.answer(
        f"<b>Название : {address_data.name}</b>\n\nАдрес: {address_data.address}\n\n<b>Город: {address_data.city}Р</b>\n\n<b>Время работы:</b>\n\n{address_data.time}\n\n<b>",
        parse_mode=ParseMode.HTML,
    )

