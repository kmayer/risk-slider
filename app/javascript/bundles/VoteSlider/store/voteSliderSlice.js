import { createSlice } from "redux-starter-kit";

// votes: {
//   "visually_stunning": 5,
//   "great_ux": 9
// }
//
const votes = createSlice({
  name: "votes",
  initialState: {},
  reducers: {
    vote(state, action) {
      console.log(state, action);
      return state;
    }
  }
});

// Extract the action creators object and the reducer
export const { actions, reducer } = votes;

// Extract and export each action creator by name
export const { vote } = actions;

// Export the reducer, either as a default or named export
export default reducer;
