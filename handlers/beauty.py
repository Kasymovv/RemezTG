from aiogram import Router, F
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "beauty")
async def beauty(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
Выберите возможный для Вас способ:
    """,
        disable_web_page_preview=True,
        reply_markup=kb.beauty_online_offline,
        parse_mode=ParseMode.HTML,
    )
