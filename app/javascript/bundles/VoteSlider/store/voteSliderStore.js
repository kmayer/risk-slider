import { combineReducers } from "redux";
import { configureStore } from "redux-starter-kit";
import votesReducer from "./voteSliderSlice";

const voteSliderStore = preloadedState =>
  configureStore({ reducer: { votes: votesReducer }, preloadedState });

export default voteSliderStore;
