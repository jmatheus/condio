import React from 'react'
import injectTapEventPlugin from 'react-tap-event-plugin';
import Main from './Main';
import SideBar from './SideBar';

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

export default class App extends React.Component {
  render () {
    return (
      <div>
        <SideBar />
        <Main />
      </div>
    )
  }
}
