from aiogram import F, Router
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "prev_page")
async def shop(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        "Выберите категорию:", reply_markup=await kb.categories()
    )

