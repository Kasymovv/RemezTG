from aiogram import F, Router
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "to_main")
async def to_main(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
Это Telegram-бот от компании REMEZ.
Здесь можно подобрать устройство, узнать о сотрудничестве, уточнить адреса магазинов, и получить информацию по ремонту.

Официальный сайт: remez.com.ru
""",
        reply_markup=kb.menu,
    )
