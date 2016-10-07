class NavBarView extends React.Component {
  constructor() {
    super();
    this.state = {
      searchBox: ''
    }
    this.onSearchChange = this.onSearchChange.bind(this)
  }

  onSearchChange(event) {
    this.setState({ searchBox: event.target.value })
  }
  renderActiveLinks() {
      if(this.props.currentUser) {
        return (
          <ul className="topnav" id="myTopnav">
            <li>
              <a href="/logout">Logout</a>
            </li>
            <li>
              <a class="active" href="/">Home</a>
            </li>
          </ul>
        )
      }
      return (
        <ul className="topnav" id="myTopnav">
          <li>
            <a href="/login">Login</a>
          </li>
          <li>
            <a href="/register">Register</a>
          </li>
        </ul>
      )
  }

  render() {
    const { onSearchChange, searchInput } = this.props;
    return(
      <nav>
        {this.renderActiveLinks()}
        <SearchBoxView  onSearchChange={this.onSearchChange}
        searchInput={this.searchInput}
        />
      </nav>
    );
  }
}
