/**
* In this file, we create a React component
* which incorporates components provided by Material-UI.
*/
import React, {Component} from 'react';
// import RaisedButton from 'material-ui/RaisedButton';
// import Dialog from 'material-ui/Dialog';
import {deepOrange500} from 'material-ui/styles/colors';
// import FlatButton from 'material-ui/FlatButton';
import getMuiTheme from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import AppBar from 'material-ui/AppBar';
import {Table, TableBody, TableHeader, TableHeaderColumn, TableRow, TableRowColumn} from 'material-ui/Table';
import {Card, CardActions, CardHeader, CardText} from 'material-ui/Card';
import {List, ListItem} from 'material-ui/List';
import ActionInfo from 'material-ui/svg-icons/action/info';
import Divider from 'material-ui/Divider';
import Subheader from 'material-ui/Subheader';
import Avatar from 'material-ui/Avatar';
import FileFolder from 'material-ui/svg-icons/file/folder';
import LineWeight from 'material-ui/svg-icons/action/line-weight';
import {blue500, yellow600} from 'material-ui/styles/colors';
import ListIcon from 'material-ui/svg-icons/action/list';
import PhoneIcon from 'material-ui/svg-icons/hardware/phone-iphone';

const styles = {
  container: {
    paddingTop: 0,
    float: 'left', width: '20%', height: '100%', background: '#303F9F'
  },
};

const muiTheme = getMuiTheme({
  palette: {
    accent1Color: deepOrange500,
  },
});

class SideBar extends Component {
  constructor(props, context) {
    super(props, context);
    this.state = {
    };
  }

  render() {
    return (
      <MuiThemeProvider muiTheme={muiTheme}>
        <div style={styles.container}>
          <div></div>
          <List style={{background: '#EAEAEA', marginTop: 64, fontWeight: 'bold', height: '100%'}}>
            <Subheader style={{fontSize: 16}}>Menu</Subheader>
            <ListItem
              leftAvatar={<Avatar icon={<LineWeight />} />}
              primaryText="Beacon Logs"
              />
            <ListItem
              leftAvatar={<Avatar icon={<ListIcon />} />}
              primaryText="Beacon List"
              />
            <ListItem
              leftAvatar={<Avatar icon={<PhoneIcon />} />}
              primaryText="Pokemon GO"
              />
          </List>
        </div>
      </MuiThemeProvider>
    );
  }
}

export default SideBar;
