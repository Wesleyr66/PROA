import istilo from '../../css/Props.module.css'

function ComponenteProps({lugar,texto,bandeira}) {

    return (
        <div className={istilo.corpo_props}>
            <h2> Venha conhecer esse lugar íncrivel {lugar}</h2>
            <p>{texto}</p>
            <img src={bandeira} alt="" />
        </div>
    )
}

export default ComponenteProps