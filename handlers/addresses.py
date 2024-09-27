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
async def category(callback: CallbackQuery):
    city_id = callback.data.split("_")[1]
    addresses = await rq.get_city(city_id)

    if not addresses:
        await callback.message.answer("Нет доступных адресов для этого города.")
        return

    message = ""
    for address in addresses:
        message += (
            f"<b>{address.name}</b>\n\n"
            f"<b>Адрес:</b> {address.address}\n"
            f"<b>Время работы:</b> {address.time}\n"
            f"<b>Как пройти: </B> {address.map}\n\n\n"
        )

    await callback.answer()
    await callback.message.answer(
        message, parse_mode=ParseMode.HTML, reply_markup=kb.to_main_page, disable_web_page_preview=True
    )
