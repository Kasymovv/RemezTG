import asyncio
import sys
import logging

from aiogram import Bot, Dispatcher
from config import TELEGRAM_TOKEN
from handlers import beauty, collaboration, start, shop, repair, addresses, help, about


async def main():
    bot = Bot(token=TELEGRAM_TOKEN)
    dp = Dispatcher()
    dp.include_router(start.router)
    dp.include_router(addresses.router)
    dp.include_router(shop.router)
    dp.include_router(repair.router)
    dp.include_router(collaboration.router)
    dp.include_router(help.router)
    dp.include_router(about.router)
    dp.include_router(beauty.router)
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())
