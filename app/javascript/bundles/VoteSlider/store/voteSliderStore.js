// import { combineReducers } from "redux";
import { configureStore } from "redux-starter-kit";
import rootReducer from "./voteSliderSlice";

// const rootReducer = combineReducers({ metrics });

const voteSliderStore = preloadedState => {
  configureStore({
    reducer: rootReducer,
    preloadedState
  });
};

export default voteSliderStore;
