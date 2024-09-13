from aiogram import F, Router
from aiogram.types import CallbackQuery

router = Router()


@router.callback_query(F.data == "beauty")
async def beauty(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
Бесплатная укладка и мастер-класс в корнерах REMEZ

Мы открыты тестированию и сравнению. Запишитесь в один из корнеров REMEZ к стилистам на бесплатную укладку на фен-стайлер Model S или Model E. Бьюти-корнеры REMEZ расположены в торговых центрах Москвы.

Доступные корнеры для записи:

Авиапарк, Ходынский Бульвар, 4:
clck.ru/3DFs7R

Европолис, Проспект Мира, 211:
clck.ru/3DFsbp

Columbus, Улица Кировоградская, 13а:
clck.ru/3DFsZa

Щука, Улица Щукинская, 42:
clck.ru/3DFsSZ

МЕГА Белая Дача, 1-й Покровский Проезд, 5:
clck.ru/3DFsTq

МЕГА Химки, Микрорайон ИКЕА, 4:
clck.ru/3DFsV5

МЕГА Теплый Стан, Калужское шоссе, 21-й км:
Временно нет
""",
        disable_web_page_preview=True,
    )
