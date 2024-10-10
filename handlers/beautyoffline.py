from aiogram import F, Router
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
from aiogram.utils.markdown import hlink
import keyboard as kb

router = Router()


@router.callback_query(F.data == "beautyoffline")
async def beautyoffline(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        text="""<b>Бесплатная</b> укладка и мастер-класс в корнерах REMEZ

Мы открыты тестированию и сравнению. Запишитесь в один из корнеров REMEZ к стилистам на бесплатную укладку на фен-стайлер Model S или Model E. Бьюти-корнеры REMEZ расположены в торговых центрах <b>Москвы.</b>\n\n"""
        + hlink("Авиапарк\n", "https://dikidi.ru/1673133?p=0.pi")
        + hlink(
            "МЕГА Белая Дача\n",
            "https://dikidi.ru/remezbelayadach?p=0.pi",
        )
        + hlink(
            "МЕГА Химки\n",
            "https://dikidi.ru/remezhimki?p=0.pi",
        )
        + hlink(
            "МЕГА Теплый Стан\n",
            "https://dikidi.ru/teplyystan?p=0.pi",
        )
        + hlink("Европолис\n", "https://dikidi.ru/1381944?p=0.pi")
        + hlink(
            "Columbus\n",
            "https://dikidi.ru/1397156?p=0.pi",
        ),
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )
