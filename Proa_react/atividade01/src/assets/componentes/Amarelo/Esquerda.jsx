import Style from './Estilos.module.css'

function Quadrado() {
    return (
        <div className={Style.esquerda}>
            <form name="form" id="form">
                <label>Entre com o seu nome:</label><br />
                <input type="text" name="nome" maxlength="50" size="50" required placeholder="Digite seu nome aqui:"></input>
                <br /><br />
                <label>Entre com o seu e-mail:</label><br />
                <input type="email" name="email" maxlength="50" size="50" required placeholder="Digite seu nome aqui:"></input><br /><br />
                <textarea placeholder="Faça seu pedido por aqui:" ></textarea><br /><br />
                <input id="enviar" type="submit" value="Enviar"/>

            </form>
        </div>
    )
}

export default Quadrado