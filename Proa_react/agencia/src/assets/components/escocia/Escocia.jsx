import Carrinhoderolima from '../../css/Escocia.module.css'
import Props from '../props/ComponenteProps'
import Band from '../../image/Escocia_b.jfif'
function Escocia() {

    return (
        <div className={Carrinhoderolima.escocia}>
            <Props texto='Castelos medievais,
            lindas florestas, boa cerveja
            , clima agradavel,
             comidas tipicas'
                bandeira={Band}
                lugar='Escócia' />
        </div>
    )
}

export default Escocia