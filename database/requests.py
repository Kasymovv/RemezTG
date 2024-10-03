from os import device_encoding
from database.models import (
    Address,
    City,
    Repair_Address,
    Repair_City,
    async_session,
    Item,
    Category,
    User,
)
from sqlalchemy import select, update


def connection(func):
    async def wrapper(*args, **kwargs):
        async with async_session() as session:
            return await func(session, *args, **kwargs)

    return wrapper


async def set_user(tg_id):
    async with async_session() as session:
        user = await session.scalar(select(User).where(User.tg_id == tg_id))

        if not user:
            session.add(User(tg_id=tg_id))
            await session.commit()


@connection
async def update_user(session, tg_id, name, contact, email, device_serial):
    await session.execute(
        update(User)
        .where(User.tg_id == tg_id)
        .values(name=name, contact=contact, email=email, device_serial=device_serial)
    )
    await session.commit()


async def get_categories():
    async with async_session() as session:
        return await session.scalars(select(Category))


async def get_category_item(category_id: int):
    async with async_session() as session:
        return await session.scalars(select(Item).where(Item.category == category_id))


async def get_item(item_id):
    async with async_session() as session:
        return await session.scalar(select(Item).where(Item.id == item_id))


async def get_categories_city():
    async with async_session() as session:
        return await session.scalars(select(City))


async def get_categories_repair_city():
    async with async_session() as session:
        return await session.scalars(select(Repair_City))


async def get_city(city_id):
    async with async_session() as session:
        query = select(Address).where(Address.city == city_id)
        result = await session.execute(query)
        return result.scalars().all()


async def get_repair_city(repair_city_id):
    async with async_session() as session:
        query = select(Repair_Address).where(Repair_Address.city == repair_city_id)
        result = await session.execute(query)
        return result.scalars().all()
