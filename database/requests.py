from database.models import async_session, Device, Category
from sqlalchemy import select


async def get_categories():
    async with async_session() as session:
        return await session.scalars(select(Category))


async def get_category_device(category_id):
    async with async_session() as session:
        return await session.scalars(
            select(Device).where(Device.category == category_id)
        )
