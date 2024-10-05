from sqlalchemy import BigInteger, ForeignKey, String
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship
from sqlalchemy.ext.asyncio import AsyncAttrs, async_sessionmaker, create_async_engine

engine = create_async_engine(url="postgresql+asyncpg://remez:123qwe@localhost/remezdb")
async_session = async_sessionmaker(engine)


class Base(AsyncAttrs, DeclarativeBase):
    pass


class User(Base):
    __tablename__ = "users"
    id: Mapped[int] = mapped_column(primary_key=True)
    tg_id = mapped_column(BigInteger)
    name: Mapped[str] = mapped_column(String(50), nullable=True)
    email: Mapped[str] = mapped_column(String(50), nullable=True)
    contact: Mapped[str] = mapped_column(String(50), nullable=True)
    device_serial: Mapped[str] = mapped_column(String(50), nullable=True)


class Styling(Base):
    __tablename__ = "styling"
    id: Mapped[int] = mapped_column(primary_key=True)
    tg_id = mapped_column(BigInteger)
    name: Mapped[str] = mapped_column(String(50), nullable=True)
    email: Mapped[str] = mapped_column(String(50), nullable=True)
    contact: Mapped[str] = mapped_column(String(50), nullable=True)
    device: Mapped[str] = mapped_column(String(50), nullable=True)
    use_or_not: Mapped[str] = mapped_column(String(50), nullable=True)
    time: Mapped[str] = mapped_column(String(50), nullable=True)


class Category(Base):
    __tablename__ = "categories"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(500))


class Item(Base):
    __tablename__ = "items"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(500))
    price: Mapped[int] = mapped_column()
    description: Mapped[str] = mapped_column(String(500))
    equipment: Mapped[str] = mapped_column(String(5000))
    availability: Mapped[str] = mapped_column(String(500))
    buy: Mapped[str] = mapped_column(String(500))
    category: Mapped[int] = mapped_column(ForeignKey("categories.id"))


class Address(Base):
    __tablename__ = "addresses"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(500))
    time: Mapped[str] = mapped_column(String(500))
    address: Mapped[str] = mapped_column(String(500))
    phone: Mapped[str] = mapped_column(String(500))
    map: Mapped[str] = mapped_column(String(500))
    stock: Mapped[str] = mapped_column(String(500))
    city: Mapped[int] = mapped_column(ForeignKey("cities.id"))


class City(Base):
    __tablename__ = "cities"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(500))


class Repair_Address(Base):
    __tablename__ = "repair_addresses"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(500))
    time: Mapped[str] = mapped_column(String(500))
    address: Mapped[str] = mapped_column(String(500))
    phone: Mapped[str] = mapped_column(String(500))
    map: Mapped[str] = mapped_column(String(500))
    city: Mapped[int] = mapped_column(ForeignKey("repair_cities.id"))


class Repair_City(Base):
    __tablename__ = "repair_cities"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String(500))


async def async_main():
    async with engine.begin() as connect:
        await connect.run_sync(Base.metadata.create_all)
