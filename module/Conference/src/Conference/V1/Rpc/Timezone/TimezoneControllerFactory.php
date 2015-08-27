<?php
namespace Conference\V1\Rpc\Timezone;

class TimezoneControllerFactory
{
    public function __invoke($controllers)
    {
        return new TimezoneController();
    }
}
