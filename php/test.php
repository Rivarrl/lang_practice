<?php 
function __name_reflection_getargsarray($class, $method, array $args) {
    $reflection = new ReflectionMethod($class, $method);
    $ret = array();
    $tot = 0;
    foreach($reflection->getParameters() as $param) {
        $ret[$param->getName()] = $args[$tot++];
    }
    return $ret;
}
class T {
    public function tt($x, $y, $z=1) {
        $ret = __name_reflection_getargsarray($this, __FUNCTION__, array($x, $y, $z));
        print_r($ret);
        print(sizeof("121233"));
    }
}
$t = new T;
$t->tt(3, 2);
?>