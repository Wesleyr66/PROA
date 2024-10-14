import Style from './Abalaranja.module.css'
import Abavermelha from '../vermelho/Asides'

function Aba(){
    return(
        <div className={Style.aba}>
            <Abavermelha estilo={{ display: 'none' }} frame={"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14632.491130865968!2d-46.6917602!3d-23.5280859!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef8775663b04f%3A0x923835e9005f8309!2sSenac%20Lapa%20Tito!5e0!3m2!1sen!2sbr!4v1728914479033!5m2!1sen!2sbr " }/>
            <Abavermelha estilo={{ display: 'none' }} title={"NOSSA LOJA - Intrumentos Musicais"} texto={"xique xique"}/>
        </div>
    )
}

export default Aba