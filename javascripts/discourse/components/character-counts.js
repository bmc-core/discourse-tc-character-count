import { computed } from "@ember/object";
import Component from "@glimmer/component";

export default class CharacterCountComponent extends Component {

  @computed("args.composer.missingReplyCharacters")
  get showRequired() {
    return this.args.composer.missingReplyCharacters > 0
  }

  @computed("args.composer.replyLength", "args.composer.minimumPostLength", "args.composer.missingReplyCharacters")
  get charCount() {
   return this.showRequired ?
     `${this.args.composer.replyLength} / ${this.args.composer.minimumPostLength}` :
     (settings.character_count_hide_count_when_sufficient ? "" : `${this.args.composer.replyLength}`)
  }
};
