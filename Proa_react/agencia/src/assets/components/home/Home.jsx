import Viagems from '../../css/Home.module.css'

function Home() {

    return (
        <section className={Viagems.corpo}>
            <div className={Viagems.imagem_lado}></div>
            <div className={Viagems.texto_lado}>
                <h1>Ecnontre aqui a viagem dos seus sonhos!!</h1>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing
                    elit. Delectus dolor voluptatem ipsa aut minus excepturi
                    ullam, molestias itaque impedit nemo ipsam aspernaturb
                    landitiis! Nulla, veniam. Consequatur eveniet mollitia
                    necessitatibus quisquam?</p>
            </div>
        </section>
    )

}

export default Home