import Component from "@glimmer/component";
import { service } from "@ember/service";
import CharacterCounts from "../../components/character-counts";

export default class CharacterCountComponent extends Component {
  @service siteSettings;

  get titleRequiredLength() {
    return this.args.outletArgs.composer.archetypeId === "private_message"
      ? this.siteSettings.min_personal_message_title_length
      : this.siteSettings.min_topic_title_length;
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
}
