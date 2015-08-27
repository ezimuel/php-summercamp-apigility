<?php
namespace Conference\V1\Rpc\Timezone;

use Zend\Mvc\Controller\AbstractActionController;

class TimezoneController extends AbstractActionController
{
    public function timezoneAction()
    {
        $request = $this->getRequest();
        switch ($request->getMethod()) {
            case 'POST':
                return $this->post($this->bodyParams());
            case 'GET':
                return $this->get();
        }
    }

    protected function post($params)
    {
        $result = in_array($params['timezone'], timezone_identifiers_list());
        return [ 'valid' => $result ];
    }

    protected function get()
    {
        return [ 'timezone' => date_default_timezone_get() ];
    }
}
