import Style from './Fundo.module.css'
import Card from './Cards.jsx'

function Fundo(){
    return(
        <section className={Style.fundo}>
            <Card/>
            <Card/>
            <Card/>
            <Card/>
        </section>
    )
}
export default Fundo