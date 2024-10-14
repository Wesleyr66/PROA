import Style from './Asides.module.css'
function Abaclara({img,texto,title,estilo,frame}){
    return(
        <section className={Style.abarosa}>
            <h1>{title}</h1>
            <img style={estilo} src={img} alt="" />
            <p>{texto}</p>
            <iframe src={frame} frameborder="0"></iframe>
        </section>
    )
}

export default Abaclara