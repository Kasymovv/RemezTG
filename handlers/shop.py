from aiogram import F, Router
from aiogram.types import CallbackQuery
import keyboard


router = Router()


@router.callback_query(F.data == "shop")
async def shop(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        "Выберите категорию:", reply_markup=await keyboard.categories()
    )


@router.callback_query(F.data.startswith("category_"))
async def category(callback: CallbackQuery):
    await callback.message.answer(
        "Выберите товары по категории",
        reply_markup=await keyboard.devices(callback.data.split("_")[1]),
    )
