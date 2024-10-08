import Carrinhoderolima from '../../css/Escocia.module.css'
import Props from '../props/ComponenteProps'
import Band from '../../image/Aruba_b.jfif'
function Aruda() {

    return (
        <div className={Carrinhoderolima.aruda}>
            <Props 
            texto='Praias' 
            bandeira={Band} 
            lugar='Aruba' />
        </div>
    )
}

export default Aruda