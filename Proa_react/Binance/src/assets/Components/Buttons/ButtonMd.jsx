function Button({text,color}){
    return(
        <div className={`${color} flex items-center`}>
            <p className="bg-white px-8 py-3 text-nowrap">{text}</p>
        </div>
    )
}
export default Button