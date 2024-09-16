from aiogram import F, Router
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
from database import requests as rq
import keyboard as kb

router = Router()


@router.callback_query(F.data == "addresses")
async def addresses(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        "Выберите категорию:", reply_markup=await kb.categories()
    )


@router.callback_query(F.data.startswith("category_"))
async def category(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        "Выберите товар по категории",
        reply_markup=await kb.items(callback.data.split("_")[1]),
    )


@router.callback_query(F.data.startswith("item_"))
async def category(callback: CallbackQuery):
    item_data = await rq.get_item(callback.data.split("_")[1])
    await callback.answer()
    await callback.message.answer(
        f"<b>{item_data.name}</b>\n\n{item_data.description}\n\n<b>Цена: {item_data.price}Р</b>\n\n<b>Комплект:</b>\n\n{item_data.equipment}\n\n<b>Купить: {item_data.buy}</b>\n\n<b>Наличие: </b>{item_data.availability}",
        parse_mode=ParseMode.HTML,
    
