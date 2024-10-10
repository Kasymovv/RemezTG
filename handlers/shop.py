from aiogram import F, Router
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
from database import requests as rq
import keyboard as kb

router = Router()


@router.callback_query(F.data == "shop")
async def shop(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        "Выберите категорию:", reply_markup=await kb.categories()
    )


@router.callback_query(F.data.startswith("category_"))
async def category(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        "Выберите товар по категории",
        reply_markup=await kb.items(int(callback.data.split("_")[1])),
    )


@router.callback_query(F.data.startswith("item_"))
async def category(callback: CallbackQuery):
    item_data = await rq.get_item(int(callback.data.split("_")[1]))
    await callback.answer()
    await callback.message.answer(
        f"*{item_data.name}*\n\n{item_data.description}\n\n[Ознакомиться подробнее]({item_data.more_desc})\n\n*Цена:* {item_data.price}Р\n\n*Комплект:*\n\n{item_data.equipment}\n\n[Проверить наличие]({item_data.buy})",
        parse_mode=ParseMode.MARKDOWN,
        reply_markup=kb.prev_page,
    )
