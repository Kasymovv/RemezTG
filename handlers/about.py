from aiogram import Router, F
from aiogram.types import CallbackQuery

router = Router()


@router.callback_query(F.data == "about")
async def about(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer("""
Эстетика инженерии

REMEZ – российский инженерный проект. 
Наша команда мотивирована и вовлечена в процесс создания прогрессивных устройств, не уступающих аналогам глобальных брендов. 
На примере наших устройств мы доказываем, что в настоящее время технологии и инновации доступны не только корпорациям, но и амбициозной российской инженерии.

По результатам 2023 года 68% покупателей после рекомендации друзей и знакомых приобретают технику REMEZ.

    """)
