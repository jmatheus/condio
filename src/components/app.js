import React from 'react'
import injectTapEventPlugin from 'react-tap-event-plugin';

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

export default class App extends React.Component {
  render () {
    return (
      <div>
        <h1>Change me</h1>
      </div>
    )
  }
}
