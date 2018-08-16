import React from "react";
import SimpleCard from "./simplecard";
import Paper from "@material-ui/core/Paper";
import Grid from "@material-ui/core/Grid";

class YourFavorites extends React.Component {
  //your bot army code here...
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.loadFavorites();
  }

  componentDidUpdate() {
    localStorage.setItem("favorites", JSON.stringify(this.props.favorites));
  }

  render() {
    return (
      <div className="ui segment inverted red yourFavorites">
        <div className="ui five column grid">
          <div className="row">
            <h1>Your Favorites </h1>
            {/*...and here...*/} {/* map botarmy with botcards */}
            <Grid container spacing={24}>
              {this.props.favorites
                ? this.props.favorites.map(favorite => {
                    return (
                      <Grid item xs={6} sm={3}>
                        <Paper className={this.props.paper}>
                          <SimpleCard
                            name={
                              favorite.title ? favorite.title : favorite.name
                            }
                            bgImage={
                              favorite._links.thumbnail
                                ? favorite._links.thumbnail.href
                                : ""
                            }
                            description={favorite.category}
                            detailsView={this.modal}
                            id={favorite._links.self.href}
                            type="favorite"
                            item={favorite}
                            comments={this.props.comments}
                            sendComment={this.props.sendComment}
                            deleteComment={this.props.deleteComment}
                            modal={this.props.modal}
                            setItemDetails={this.props.setItemDetails}
                            favoriteClick={() =>
                              this.props.favoriteClick(favorite)
                            }
                          />
                        </Paper>
                      </Grid>
                    );
                  })
                : ""}
            </Grid>
          </div>
        </div>
      </div>
    );
  }
}

export default YourFavorites;
