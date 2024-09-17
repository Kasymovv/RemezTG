from aiogram import F, Router
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "beauty")
async def beauty(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
<b>Бесплатная укладка и мастер-класс в корнерах REMEZ</b>

Мы открыты тестированию и сравнению. Запишитесь в один из корнеров REMEZ к стилистам на бесплатную укладку на фен-стайлер Model S или Model E. Бьюти-корнеры REMEZ расположены в торговых центрах Москвы.

Доступные корнеры для записи:

<b>Авиапарк, Ходынский Бульвар, 4:</b>
clck.ru/3DFs7R

<b>Европолис, Проспект Мира, 211:</b>
clck.ru/3DFsbp

<b>Columbus, Улица Кировоградская, 13а:</b>
clck.ru/3DFsZa

<b>Щука, Улица Щукинская, 42:</b>
clck.ru/3DFsSZ

<b>МЕГА Белая Дача, 1-й Покровский Проезд, 5:</b>
clck.ru/3DFsTq

<b>МЕГА Химки, Микрорайон ИКЕА, 4:</b>
clck.ru/3DFsV5

<b>МЕГА Теплый Стан, Калужское шоссе, 21-й км:</b>
Временно нет
""",
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )
