from sqlalchemy import ForeignKey, Integer, String
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.ext.asyncio import AsyncAttrs, async_sessionmaker, create_async_engine

engine = create_async_engine(url="sqlite+aiosqlite:///db.sqlite3")
async_session = async_sessionmaker(engine)


class Base(AsyncAttrs, DeclarativeBase):
    pass


class Category(Base):
    __tablename__ = "categories"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(25))


class Item(Base):
    __tablename__ = "items"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(25))
    price: Mapped[int] = mapped_column()
    description: Mapped[str] = mapped_column(String(60))
    equipment: Mapped[str] = mapped_column(String(500))
    availability: Mapped[str] = mapped_column(String(25))
    buy: Mapped[str] = mapped_column(String(25))
    category: Mapped[int] = mapped_column(ForeignKey("categories.id"))


class City(Base):
    __tablename__ = "cities"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(60))


class Address(Base):
    __tablename__ = "addresses"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(25))
    time: Mapped[str] = mapped_column(String(60))
    category: Mapped[int] = mapped_column()
    address: Mapped[str] = mapped_column(String(100))
    city: Mapped[int] = mapped_column(ForeignKey("cities.id"))


async def async_main():
    async with engine.begin() as connect:
        await connect.run_sync(Base.metadata.create_all)
