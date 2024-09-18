from aiogram import Router, F
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
import keyboard as kb

router = Router()


@router.callback_query(F.data == "another")
async def help(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        """
К сожалению в Вашем городе мы не открыли точки продаж, но Вы всегда можете приобрести наши устройства онлайн:

<b>Сайт: </b>
remez.com.ru - официальный сайт

<b>Маркетплейсы: </b>

<b>OZON:</b>
https://www.ozon.ru/seller/ofitsialnyy-magazin-remez-1042609/products/?miniapp=seller_1042609

<b>Yandex.Market:</b>
https://market.yandex.ru/brands--remez/18340930?_redirectCount=1

<b>Megamarket:</b>
https://megamarket.ru/shops/remihof/

<b>Wildberries:</b>
https://www.wildberries.ru/brands/remez
    """,
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )
