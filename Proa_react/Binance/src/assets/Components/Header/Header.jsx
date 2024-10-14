import Logo from '../../Images/binance.svg'
function Header() {
    return (
        <header>
            <div className='flex p-5 text-white font-medium text-sm items-center'>
                <img className='w-[125px] mx-2.5' src={Logo} alt="" />
                <p className='mx-2.5' >Compre Cripto</p>
                <p className='mx-2.5'>Mercados</p>

                <div className='mx-2.5'>
                    <p>Trade</p>
                </div>
                <p className='mx-2.5'>Earn</p>

                <div className='mx-2.5'>
                    <p>Square</p>
                </div>

                <div className='mx-2.5'>
                    <p>Mais</p>
                </div>
            </div>

        </header>
    )
}
export default Header