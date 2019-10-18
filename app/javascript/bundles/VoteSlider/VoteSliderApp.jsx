import React from "react";
import { Provider } from "react-redux";

import configureStore from "./store/voteSliderStore";
import VoteSlider from "./components/VoteSlider";
import ErrorBoundary from "./components/ErrorBoundary";

// See documentation for https://github.com/reactjs/react-redux.
// This is how you get props from the Rails view into the redux store.
// This code here binds your smart component to the redux store.
const VoteSliderApp = props => (
  <Provider store={configureStore(props)}>
    <ErrorBoundary>
      <VoteSlider />
    </ErrorBoundary>
  </Provider>
);

export default VoteSliderApp;
