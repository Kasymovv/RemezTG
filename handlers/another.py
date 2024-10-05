from aiogram import Router, F
from aiogram.enums import ParseMode
from aiogram.types import CallbackQuery
from aiogram.utils.markdown import hlink
import keyboard as kb

router = Router()


@router.callback_query(F.data == "another")
async def help(callback: CallbackQuery):
    await callback.answer()
    await callback.message.answer(
        text="К сожалению в Вашем городе мы не открыли точки продаж, но Вы всегда можете приобрести наши устройства онлайн:\n\n"
        + hlink("Официальный сайт\n\n", "remez.com.ru")
        + "<b>Онлайн-магазины</b>\n\n"
        + hlink(
            "Avito\n",
            "https://www.avito.ru/brands/i167361066/all/bytovaya_tehnika?sellerId=faafe37f6dddc6517e7ccfd57de79209",
        )
        + hlink(
            "OZON\n",
            "https://www.ozon.ru/seller/ofitsialnyy-magazin-remez-1042609/products/?miniapp=seller_1042609",
        )
        + hlink(
            "Yandex Market\n",
            "https://market.yandex.ru/brands--remez/18340930?_redirectCount=1",
        )
        + hlink("Megamarket\n", "https://megamarket.ru/shops/remihof/")
        + hlink(
            "Бессовестно Таланливый\n",
            "https://ibt.ru/?srsltid=AfmBOoq-gh-5FPQnyifiO7rOwXxVoKALDiLvaChbcwTY6WBs3D9SXnyN&digiSearch=true&term=Remez&params=%7Csort%3DDEFAULT",
        )
        + hlink("РИВ ГОШ\n", "https://rivegauche.ru/search?text=remez"),
        disable_web_page_preview=True,
        reply_markup=kb.to_main_page,
        parse_mode=ParseMode.HTML,
    )
