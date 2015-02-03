<#include "header.ftl">
<#include "navigation.ftl">

<div class="homepage">
    <section class="main-banner">
        <div class="container">
            <h1 class="fade-in-up one" id="largeText">
                The Open Source
                <span>Monitoring and Management Platform</span>
            </h1>

            <div class="buttons fade-in two">
                <a class="btn btn-primary btn-lg" href="https://github.com/hawkular/hawkular">Download Hawkular</a>
                <a class="btn btn-default btn-lg" href="https://github.com/hawkular">View on GitHub</a>
            </div>
            <p class="version fade-in three"><i class="fa fa-list-ul"></i>0.0.1.Alpha01 - 10 Feb 2015
            </p>
        </div>
        <div id="datGui">
        </div>
    </section>
    <section class="boxes">
        <div class="row">
            <div class="server-side box col-sm-4">
                <div class="content">
                    <h3>React on various events</h3>

                    <p>Setup alerts and do your own stuff</p>
                </div>
            </div>
            <div class="services box col-sm-4">
                <div class="content">
                    <h3>Monitoring ready to use</h3>

                    <p>Storage, security, push and more</p>
                </div>
            </div>
            <div class="cloud box col-sm-4">
                <div class="content">
                    <h3>On-premise or in the cloud</h3>

                    <p>Also running on OpenShift</p>
                </div>
            </div>
        </div>
    </section>
    <section class="description">
        <p>
            Hawkular provides a flexible and easy to use Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip you need.
        </p>
    </section>
    <section class="main-features">
        <div class="container">
            <h2>Hawkular Features</h2>

            <div class="row">
                <ul>
                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-cloud"></i>
                        <h4>Metric Storage</h4>

                        <p>Flexible, scalable and high performance metric storage based on Cassandra.</p>
                    </li>
                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-bell"></i>
                        <h4>
                            Alerting
                            <span>(coming soon)</span>
                        </h4>

                        <p>Notify administrators of performance problems or other user defined conditions.</p>
                    </li>
                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-sitemap"></i>
                        <h4>
                            Inventory
                            <span>(coming soon)</span>
                        </h4>

                        <p>Keep track of the monitored topology and all the monitored resource metadata.</p>
                    </li>
                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-heartbeat"></i>
                        <h4>
                            Pinger
                            <span>(coming soon)</span>
                        </h4>

                        <p>Checks if given web is up and running by sending HTTP HEAD requests.</p>
                    </li>

                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-bar-chart"></i>
                        <h4>
                            Metric Data Visualization
                            <span>(coming soon)</span>
                        </h4>

                        <p>View and manage your data in the management console, including real time monitoring.</p>
                    </li>

                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-mobile"></i>
                        <h4>
                            Push Notifications
                            <span>(coming soon)</span>
                        </h4>

                        <p>As a result of Hawkular Alerts let Aerogear notify your smartphone when something went
                            wrong.</p>
                    </li>
                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-code"></i>
                        <h4>
                            Easily extensible
                            <span>(coming soon)</span>
                        </h4>

                        <p>Write your own metric feed using curl and some Bash magic or use what we prepared for
                            you.</p>
                    </li>
                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-dashboard"></i>
                        <h4>
                            Analytics
                            <span>(coming soon)</span>
                        </h4>

                        <p>Watch your application growth and performance with the Analytics dashboard.</p>
                    </li>
                    <li class="col-md-4 col-sm-3">
                        <i class="fa fa-lock"></i>
                        <h4>
                            Security
                            <span>(coming soon)</span>
                        </h4>

                        <p>Out of the box Single Sign On (SSO) and Identity Management (IDM) with Keycloak.</p>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</div>

<#include "footer.ftl">
