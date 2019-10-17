import { combineReducers } from "redux";
import { configureStore } from "redux-starter-kit";
import updateName from "./helloWordSlice";
// import otherReducer from "../reducers/someOtherReduer";

const rootReducer = combineReducers({name: updateName});

const helloWorldStore = railsProps => configureStore({
    reducer: rootReducer,
    preloadedState: railsProps
});

export default helloWorldStore;
