import Carrinhoderolima from '../../css/Escocia.module.css'
import Props from '../props/ComponenteProps'
import Band from '../../image/China_b.jfif'
function China() {

    return (
        <div className={Carrinhoderolima.china}>
            <Props 
            texto='Grandes muralhas' 
            bandeira={Band} 
            lugar="China" />
        </div>
    )
}

export default China