import Carrinhoderolima from '../../css/Escocia.module.css'
import Props from '../props/ComponenteProps'
import Band from '../../image/USA_b.jfif'
function Canyon() {

    return (
        <div className={Carrinhoderolima.canyon}>
            <Props 
            texto='Deserto' 
            bandeira={Band} 
            lugar='USA' />
        </div>
    )
}

export default Canyon