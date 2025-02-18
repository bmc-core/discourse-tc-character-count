import Component from "@glimmer/component";
import CharacterCounts from "../../components/character-counts";
import { service } from "@ember/service";

export default class CharacterCountComponent extends Component {
  @service siteSettings;

  get titleRequiredLength() {
    return this.siteSettings.min_topic_title_length;
  }

  get missingTitleCharacters() {
    return this.titleRequiredLength - this.args.outletArgs.composer.titleLength;
  }

  <template>
    <CharacterCounts 
      @missingReplyCharacters={{this.missingTitleCharacters}}
      @length={{@outletArgs.composer.titleLength}}
      @minimumLength={{this.titleRequiredLength}}
    />
  </template>
};
