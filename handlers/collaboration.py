from aiogram import F, Router
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "collaboration")
async def collaboration(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
Если Вы инфлюенсер, стилист, блогер: @irina_irita

Оптовые продажи: i.fomina@romatigroup.com

PR и маркетинг: i.petrova@romatigroup.com

Логистика: info@remezair.com

Прочее сотрудничество: info@remez.com.ru
    """,
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
    )
