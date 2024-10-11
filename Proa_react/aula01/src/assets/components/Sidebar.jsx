import { BsPlus, BsFillLightningFill, BsGearFill } from "react-icons/bs";
import { FaFire, FaPoo } from "react-icons/fa";
import Icons from "./Icons";

function Sidebar(){
    return(
        <div className="fixed top-0 flex items-center flex-col h-screen bg-gray-900 w-16 text-white">
            <Icons icone={<BsGearFill size={32}/>}/>
            <Icons icone={<FaPoo size={32}/>}/>
            <Icons icone={<BsGearFill size={32}/>}/>
            <Icons icone={<BsGearFill size={32}/>}/>
        </div>
    )
}
export default Sidebar