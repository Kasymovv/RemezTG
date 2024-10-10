from aiogram import Router, F
from aiogram.enums import ParseMode, parse_mode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "about")
async def about(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
Выберите интересующую информацию:
    """,
        disable_web_page_preview=True,
        reply_markup=kb.collab_and_help,
        parse_mode=ParseMode.HTML,
    )
