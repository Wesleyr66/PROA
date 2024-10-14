import Style from './Cards.module.css'
import Guitar from '../../imagem/guitarrinha.jpg'
function Cards() {
    return (
        <div className={Style.cards}>
            <img src={Guitar} alt="" />
            <p>Violão yamaha c70 II CLÁSSICO NYLON ACÚSTICO NATURAL BRILHANTE</p>
            <p style={{color: 'red'}}>R$ 989,50</p>
        </div>
    )
}

export default Cards