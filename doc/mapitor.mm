<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Mapitor" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1437503456723"><hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="2"/>
<node TEXT="Command Language" POSITION="right" ID="ID_1785709203" CREATED="1439207307910" MODIFIED="1439207311439">
<edge COLOR="#0000ff"/>
<node TEXT="arrow create" ID="ID_1103964271" CREATED="1439207324859" MODIFIED="1439207328215"/>
<node TEXT="node create" ID="ID_1315705081" CREATED="1439207328605" MODIFIED="1439207330062"/>
</node>
<node TEXT="Todo" POSITION="right" ID="ID_1230928305" CREATED="1437503457367" MODIFIED="1437503460000">
<edge COLOR="#ff0000"/>
<node TEXT="v0.1.0" ID="ID_1667773688" CREATED="1437503460830" MODIFIED="1438869364433">
<icon BUILTIN="button_ok"/>
<node TEXT="create basic objects w/ sync to svg element" ID="ID_1669460719" CREATED="1437503467418" MODIFIED="1437503501562"/>
</node>
<node TEXT="v0.1.1" ID="ID_731333792" CREATED="1438869024081" MODIFIED="1438869027118">
<node TEXT="separate centeredNode, focusedNode, currentNode, selectedNodes" ID="ID_1219938116" CREATED="1438869075573" MODIFIED="1439298949157">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="insert and delete objects via ui" ID="ID_795772775" CREATED="1439298934191" MODIFIED="1439298944368">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="implement command pattern" ID="ID_1346823548" CREATED="1439204540777" MODIFIED="1439298956227">
<icon BUILTIN="button_ok"/>
<node TEXT="for basic functions" ID="ID_716694187" CREATED="1439207194920" MODIFIED="1439207197929"/>
</node>
<node TEXT="circular design" ID="ID_1475764146" CREATED="1439298992651" MODIFIED="1439917009885">
<icon BUILTIN="button_ok"/>
<node TEXT="handle unconnected nodes" ID="ID_1700929905" CREATED="1439298996310" MODIFIED="1439299004882"/>
</node>
<node TEXT="handle auto-resizing of areas" ID="ID_1852069607" CREATED="1438869027530" MODIFIED="1438869048450"/>
<node TEXT="add adhoc keyboard shortcuts" ID="ID_748207674" CREATED="1438869111692" MODIFIED="1438869118042">
<node TEXT="f2" ID="ID_78774847" CREATED="1438869121226" MODIFIED="1438869122516"/>
<node TEXT="enter" ID="ID_1474252611" CREATED="1438869126440" MODIFIED="1438869127432"/>
<node TEXT="tab" ID="ID_691404913" CREATED="1438869120050" MODIFIED="1439298968059">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="del" ID="ID_1864774844" CREATED="1439298961057" MODIFIED="1439298973983">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node TEXT="use divs for text nodes" ID="ID_1471866747" CREATED="1439917051155" MODIFIED="1439917055068"/>
<node TEXT="add language" ID="ID_488698624" CREATED="1438869136944" MODIFIED="1438869157781">
<node TEXT="create machine" ID="ID_371731921" CREATED="1439207344198" MODIFIED="1439207347053"/>
</node>
<node TEXT="move factories into map!!" ID="ID_1290410842" CREATED="1439457310047" MODIFIED="1439917059951">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="probably use preprocessor cpp for type checks" ID="ID_1205262493" CREATED="1439459155579" MODIFIED="1439459167068"/>
<node TEXT="redo circular design" ID="ID_114747802" CREATED="1439917016648" MODIFIED="1439917022732">
<node TEXT="circles w/ places independent of positioning routine" ID="ID_24003819" CREATED="1439917023245" MODIFIED="1439917039702"/>
</node>
</node>
<node TEXT="v0.1.2" ID="ID_370550809" CREATED="1438869312564" MODIFIED="1438869318531">
<node TEXT="zoom and scroll" ID="ID_1853372937" CREATED="1438869319405" MODIFIED="1438869327847"/>
</node>
<node TEXT="v1.0.0" ID="ID_1324739582" CREATED="1438869164340" MODIFIED="1438869166698">
<node TEXT="have a menu" ID="ID_185623806" CREATED="1438869167359" MODIFIED="1438869173787"/>
<node TEXT="have at least circular, basic and hierarchical layouts" ID="ID_1772999203" CREATED="1438869179954" MODIFIED="1438869195581"/>
<node TEXT="have upload/download of json files" ID="ID_1443451053" CREATED="1438869196788" MODIFIED="1438869204349"/>
<node TEXT="persist current state" ID="ID_989474496" CREATED="1438869220992" MODIFIED="1438869224152"/>
<node TEXT="have a README" ID="ID_1836108830" CREATED="1438869224410" MODIFIED="1439370432700">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="have a license" ID="ID_1518712853" CREATED="1438869235246" MODIFIED="1439370436837">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="have some help window" ID="ID_1914298961" CREATED="1438869272321" MODIFIED="1438869283609"/>
</node>
</node>
</node>
</map>
