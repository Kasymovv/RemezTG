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
<b>Эстетика инженерии</b>

REMEZ – российский инженерный проект. 
Наша команда мотивирована и вовлечена в процесс создания прогрессивных устройств, не уступающих аналогам глобальных брендов. 
На примере наших устройств мы доказываем, что в настоящее время технологии и инновации доступны не только корпорациям, но и амбициозной российской инженерии.

<b>По результатам 2023 года 68% покупателей после рекомендации друзей и знакомых приобретают технику REMEZ.</b>

    """,
        disable_web_page_preview=True,
        reply_markup=kb.collab_and_help,
        parse_mode=ParseMode.HTML,
    )
