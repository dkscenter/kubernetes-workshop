import axios from "axios"
const instance = axios.create({
    baseURL:"https://141-11-156-103-todos-backend.gumon.io/api"
})
export default instance