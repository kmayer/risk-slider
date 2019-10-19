import { configureStore } from "redux-starter-kit";
import votesReducer from "./votesSlice";
import urlReducer from "./urlSlice";

const voteStore = preloadedState =>
  configureStore({
    reducer: { votes: votesReducer, url: urlReducer },
    preloadedState
  });

export default voteStore;
