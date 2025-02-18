import Component from "@glimmer/component";
import CharacterCounts from "../../components/character-counts";

export default class CharacterCountComponent extends Component {
  // shouldRender: (args) => args && args.editorType === "composer",

  <template>
    <CharacterCounts 
      @missingReplyCharacters={{@outletArgs.composer.missingReplyCharacters}}
      @length={{@outletArgs.composer.replyLength}}
      @minimumLength={{@outletArgs.composer.minimumPostLength}}
    />
  </template>
};
