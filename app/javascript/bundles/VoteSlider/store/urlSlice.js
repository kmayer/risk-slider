import { createSlice } from "redux-starter-kit";

const url = createSlice({
  name: "url",
  initialState: "",
  reducers: {}
});

// Extract the action creators object and the reducer
export const { actions, reducer } = url;

// Export the reducer, either as a default or named export
export default reducer;
