function Pessoa({name, idade, profissao, foto}) {
    return (
        <div>
            <img src={foto} alt="" />
            <h2>Nome: {name} </h2>
            <p>Idade: {idade}</p>
            <p>Proffisão: {profissao}</p>
        </div>
    )
}
export default Pessoa